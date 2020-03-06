Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A82617B6C1
	for <lists+linux-um@lfdr.de>; Fri,  6 Mar 2020 07:34:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-Reply-To:
	Date:References:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+u+0sPERdOpRRFauIiik8whzAE5lgzGvY7IQl9Waqk8=; b=CDbI1sG0I3v56s
	ORqgfB3sQnBxQ2CHXB77KVDa6Qtwf8eWaH4h0vCspdA0ISytD+Yw1IAe5j3ksEufxnSf+bhJAtTRz
	0+mrZwJgRax2iXOWOFeWPZksGZo5FGCh1jA3QYrBjyy9tPrxEQI3i0CukysPl6z12RbZUEQLXfZJr
	2z9iqAY7ZSxVlQXLmRkdg9QUsAVlv4Nea230M9ekR+5KXsyO+SKfFx9ShH/t3K/c27Z6rzYZZB8+p
	tZAbYnoOTG/4z7+D8PhB4/E9HjQ8tJefmcyFFb3Y2ZGeGVdy4WFg0P5YZG9AWjv1HL3FrlOrc5onq
	GbfkwCKW0tno7prrcfIA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jA6Ym-0003Jp-OG; Fri, 06 Mar 2020 06:34:12 +0000
Received: from mail26.static.mailgun.info ([104.130.122.26])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jA6Yi-0003JI-Jt
 for linux-um@lists.infradead.org; Fri, 06 Mar 2020 06:34:10 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1583476449; h=Content-Type: MIME-Version: Message-ID:
 In-Reply-To: Date: References: Subject: Cc: To: From: Sender;
 bh=Xa2/rGglSjQqLiBjNfmyOdtgMqNZ1rc/kYTlcrSKm6A=;
 b=cHyRZTukWfxtxXD69+hnb9bTcw6VJ6ISTCcBT1S6Hv84etYbRnmkqMpLiJTe/4G/f0zy4jve
 6m9PTp+T/APP9haHdiiqQVA/t0OcHVEXPhYVkicJbRRAxgqZ6FthaNlUXj1p68PITQSfVC4q
 R0SXvZ+aJUCf4oo8cwxqtc9xBLw=
X-Mailgun-Sending-Ip: 104.130.122.26
X-Mailgun-Sid: WyI5YmM1YyIsICJsaW51eC11bUBsaXN0cy5pbmZyYWRlYWQub3JnIiwgImJlOWU0YSJd
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171])
 by mxa.mailgun.org with ESMTP id 5e61eedb.7fa7535cfd18-smtp-out-n02;
 Fri, 06 Mar 2020 06:34:03 -0000 (UTC)
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id 9BF8DC433A2; Fri,  6 Mar 2020 06:34:03 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED,SPF_NONE
 autolearn=unavailable autolearn_force=no version=3.4.0
Received: from potku.adurom.net (88-114-240-156.elisa-laajakaista.fi
 [88.114.240.156])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: kvalo)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 3B845C43383;
 Fri,  6 Mar 2020 06:33:57 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 3B845C43383
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 spf=none smtp.mailfrom=kvalo@codeaurora.org
From: Kalle Valo <kvalo@codeaurora.org>
To: Jakub Kicinski <kuba@kernel.org>
Subject: Re: [PATCH net-next 7/7] wil6210: reject unsupported coalescing params
References: <20200306010602.1620354-1-kuba@kernel.org>
 <20200306010602.1620354-8-kuba@kernel.org>
Date: Fri, 06 Mar 2020 08:33:55 +0200
In-Reply-To: <20200306010602.1620354-8-kuba@kernel.org> (Jakub Kicinski's
 message of "Thu, 5 Mar 2020 17:06:02 -0800")
Message-ID: <8736amouuk.fsf@kamboji.qca.qualcomm.com>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/24.5 (gnu/linux)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200305_223409_264957_C6E00C08 
X-CRM114-Status: UNSURE (   9.27  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [104.130.122.26 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: mkubecek@suse.cz, merez@codeaurora.org, pv-drivers@vmware.com,
 GR-Linux-NIC-Dev@marvell.com, doshir@vmware.com, leon@kernel.org,
 manishc@marvell.com, linux-rdma@vger.kernel.org, richard@nod.at,
 jdike@addtoit.com, linux-um@lists.infradead.org, edumazet@google.com,
 jasowang@redhat.com, jgg@ziepe.ca, dledford@redhat.com, netdev@vger.kernel.org,
 gregkh@linuxfoundation.org, linux-wireless@vger.kernel.org,
 hayeswang@realtek.com, davem@davemloft.net, anton.ivanov@cambridgegreys.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

Jakub Kicinski <kuba@kernel.org> writes:

> Set ethtool_ops->supported_coalesce_params to let
> the core reject unsupported coalescing parameters.
>
> This driver did not previously reject unsupported parameters.
>
> Signed-off-by: Jakub Kicinski <kuba@kernel.org>

As this goes to net-next:

Acked-by: Kalle Valo <kvalo@codeaurora.org>

-- 
https://wireless.wiki.kernel.org/en/developers/documentation/submittingpatches

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
