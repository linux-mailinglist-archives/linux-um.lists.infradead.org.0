Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BB031DB925
	for <lists+linux-um@lfdr.de>; Wed, 20 May 2020 18:16:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SXOgm82Hk3AnH1ue4vw4+UhjFr6EGbRjk9XT66Vcfpk=; b=txSF066ySX/WPK
	3nFesqLd5+6PWs7kgost88QefZiHKLtTnyteejcKsJYeXC9y50NY4NO2VxfbpGKr5BiBzFe1++a1F
	n0AmhvSv9B4yIpx8u7jAEBRcipwS4F5UulV+6tE0jwN3kFmQzirtz0qEbvRXXT02QBka962SM9Ay8
	e9KC3Frpe5qQLXmTguLMDSSheukWgYmume4XD0JAy4XLxjXobFOtQxWu/31loqqA7rlVOAQrfb1S7
	ffDyAsCczgSpA4tpKQHxjnAPitioXjR/rlR+RKIrjGMfkjwAHhMDAqvuMczV0iIINrRAKO9xBzyU3
	difyPTLeQ2+mlgt1KZPg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbROX-0001uc-7j; Wed, 20 May 2020 16:16:37 +0000
Received: from verein.lst.de ([213.95.11.211])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbROV-0001pD-4z
 for linux-um@lists.infradead.org; Wed, 20 May 2020 16:16:36 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id 44A7568BEB; Wed, 20 May 2020 18:16:30 +0200 (CEST)
Date: Wed, 20 May 2020 18:16:30 +0200
From: Christoph Hellwig <hch@lst.de>
To: Masami Hiramatsu <mhiramat@kernel.org>
Subject: Re: [PATCH 20/20] maccess: return -ERANGE when
 copy_from_kernel_nofault_allowed fails
Message-ID: <20200520161630.GA4432@lst.de>
References: <20200519134449.1466624-1-hch@lst.de>
 <20200519134449.1466624-21-hch@lst.de>
 <20200520200255.3db6d27304f0b4c29c52ebcc@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200520200255.3db6d27304f0b4c29c52ebcc@kernel.org>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200520_091635_340869_A258E934 
X-CRM114-Status: UNSURE (   6.26  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [213.95.11.211 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-BeenThere: linux-um@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <linux-um.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-um>,
 <mailto:linux-um-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-um/>
List-Post: <mailto:linux-um@lists.infradead.org>
List-Help: <mailto:linux-um-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-um>,
 <mailto:linux-um-request@lists.infradead.org?subject=subscribe>
Cc: linux-parisc@vger.kernel.org, Daniel Borkmann <daniel@iogearbox.net>,
 netdev@vger.kernel.org, x86@kernel.org, linux-um@lists.infradead.org,
 Alexei Starovoitov <ast@kernel.org>, linux-kernel@vger.kernel.org,
 linux-mm@kvack.org, bpf@vger.kernel.org,
 Andrew Morton <akpm@linux-foundation.org>,
 Linus Torvalds <torvalds@linux-foundation.org>, Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

On Wed, May 20, 2020 at 08:02:55PM +0900, Masami Hiramatsu wrote:
> Can you also update the kerneldoc comment too?

Sure, done.

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
