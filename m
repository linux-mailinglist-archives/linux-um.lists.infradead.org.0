Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BC8771548F7
	for <lists+linux-um@lfdr.de>; Thu,  6 Feb 2020 17:17:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=r0gFzaDAgW6w5nvgYaOW5I/en4U7yw1BKxrQUJ4GmXI=; b=XQ5VmWfE5j0caL
	Qg5hQMaHxePTqjtcCSwPqnwNnXmJ0s3ev49soIYWr4AbHW+xZRds5wAqNXYNQ71HcD+M5+1G1I0K3
	HpzggIPrS1ASAkVsWxgCW+v8OFOgaa6YTwuZiqq6GFYAo6ipkRGGhXqjod65FJtAUzcVproiOVaq4
	BUmCdyH4+2mQKUN5wC5GuzwJ5xp2OHjLW5YS9ceddGg/PJOJQI7fOXVjIXQT8DM65l/wDNNURQIHF
	DtE1iqSGSZYacSfyajKQ0eWavf/UYtle/A9ZbU3dVIdRepHGMZZUnPItcZdMxmAdwZTfsJ+MbFgVD
	wwJMvj0lrQh60BKIDRqg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1izjqh-0003k2-UX; Thu, 06 Feb 2020 16:17:51 +0000
Received: from us-smtp-delivery-1.mimecast.com ([205.139.110.120]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1izjqf-0003jZ-C7
 for linux-um@lists.infradead.org; Thu, 06 Feb 2020 16:17:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1581005868;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=y/Qft0V8xjpz5L2nA4UniKh71mergu/nSXCSw/xoDUU=;
 b=Me92aZ1dd8sNlEOcwVgM/ZXm7e47GkjLpeyeYuLMSal8HdxLJEfpM/dMvX18JeZFLmuZJS
 JPo1AdTbe+4w0TE4SMZckNHqewnAwnlBMucOyJKLNyeJPOpd1uB7lXG/0SvDgFn9y9lv2s
 oW202ivILjOEm46gHbe1iJp1UH5SehQ=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-304-EV9chORxOEadFW-G8wx9rg-1; Thu, 06 Feb 2020 11:17:45 -0500
X-MC-Unique: EV9chORxOEadFW-G8wx9rg-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com
 [10.5.11.13])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 4BCFF18B5FA9;
 Thu,  6 Feb 2020 16:17:43 +0000 (UTC)
Received: from gondolin (dhcp-192-195.str.redhat.com [10.33.192.195])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 91EF18EA0C;
 Thu,  6 Feb 2020 16:17:40 +0000 (UTC)
Date: Thu, 6 Feb 2020 17:17:38 +0100
From: Cornelia Huck <cohuck@redhat.com>
To: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
Subject: Re: [PATCH v2 00/27] docs: virt: manually convert text documents to
 ReST format
Message-ID: <20200206171738.75f374da.cohuck@redhat.com>
In-Reply-To: <cover.1581000481.git.mchehab+huawei@kernel.org>
References: <cover.1581000481.git.mchehab+huawei@kernel.org>
Organization: Red Hat GmbH
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200206_081749_488141_9C64479E 
X-CRM114-Status: UNSURE (   8.71  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [205.139.110.120 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: kvm@vger.kernel.org, linux-doc@vger.kernel.org,
 Richard Weinberger <richard@nod.at>, Jeff Dike <jdike@addtoit.com>,
 Jonathan Corbet <corbet@lwn.net>, linux-um@lists.infradead.org,
 Mauro Carvalho Chehab <mchehab@infradead.org>,
 Paolo Bonzini <pbonzini@redhat.com>,
 Linux Media Mailing List <linux-media@vger.kernel.org>,
 Anton Ivanov <anton.ivanov@cambridgegreys.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

On Thu,  6 Feb 2020 15:49:57 +0100
Mauro Carvalho Chehab <mchehab+huawei@kernel.org> wrote:

> Manually convert the documentation under Documentation/virt to ReST,
> minimizing the usage of uneeded markups and preserving the documentation
> writer's style.

While you're at it: Would it make sense to convert and move the lone
file under Documentation/virtual/ that survived 2f5947dfcaec
("Documentation: move Documentation/virtual to Documentation/virt")
(probably due to a conflict) under virt/ as well?


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
